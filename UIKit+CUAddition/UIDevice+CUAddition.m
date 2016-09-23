//
//  UIDevice+CUAddition.m
//  Pods
//
//  Created by czm on 16/3/25.
//
//

#import "UIDevice+CUAddition.h"
#import <sys/sysctl.h>
#import <mach/mach.h>

@implementation UIDevice (CUAddition)

- (int64_t)cu_deviceMemoryTotal
{
    int64_t mem = [[NSProcessInfo processInfo] physicalMemory];
    if (mem < -1) mem = -1;
    return mem;
}

- (int64_t)cu_deviceMemoryUsed
{
    mach_port_t host_port = mach_host_self();
    mach_msg_type_number_t host_size = sizeof(vm_statistics_data_t) / sizeof(integer_t);
    vm_size_t page_size;
    vm_statistics_data_t vm_stat;
    kern_return_t kern;
    
    kern = host_page_size(host_port, &page_size);
    if (kern != KERN_SUCCESS) return -1;
    kern = host_statistics(host_port, HOST_VM_INFO, (host_info_t)&vm_stat, &host_size);
    if (kern != KERN_SUCCESS) return -1;
    return page_size * (vm_stat.active_count + vm_stat.inactive_count + vm_stat.wire_count);
}

- (int64_t)cu_deviceMemoryFree
{
    mach_port_t host_port = mach_host_self();
    mach_msg_type_number_t host_size = sizeof(vm_statistics_data_t) / sizeof(integer_t);
    vm_size_t page_size;
    vm_statistics_data_t vm_stat;
    kern_return_t kern;
    
    kern = host_page_size(host_port, &page_size);
    if (kern != KERN_SUCCESS) return -1;
    kern = host_statistics(host_port, HOST_VM_INFO, (host_info_t)&vm_stat, &host_size);
    if (kern != KERN_SUCCESS) return -1;
    return vm_stat.free_count * page_size;
}

- (int64_t)cu_deviceMemoryActive
{
    mach_port_t host_port = mach_host_self();
    mach_msg_type_number_t host_size = sizeof(vm_statistics_data_t) / sizeof(integer_t);
    vm_size_t page_size;
    vm_statistics_data_t vm_stat;
    kern_return_t kern;
    
    kern = host_page_size(host_port, &page_size);
    if (kern != KERN_SUCCESS) return -1;
    kern = host_statistics(host_port, HOST_VM_INFO, (host_info_t)&vm_stat, &host_size);
    if (kern != KERN_SUCCESS) return -1;
    return vm_stat.active_count * page_size;
}

- (int64_t)cu_deviceMemoryInactive
{
    mach_port_t host_port = mach_host_self();
    mach_msg_type_number_t host_size = sizeof(vm_statistics_data_t) / sizeof(integer_t);
    vm_size_t page_size;
    vm_statistics_data_t vm_stat;
    kern_return_t kern;
    
    kern = host_page_size(host_port, &page_size);
    if (kern != KERN_SUCCESS) return -1;
    kern = host_statistics(host_port, HOST_VM_INFO, (host_info_t)&vm_stat, &host_size);
    if (kern != KERN_SUCCESS) return -1;
    return vm_stat.inactive_count * page_size;
}

- (int64_t)cu_currentTaskMemoryUsed
{
    task_basic_info_data_t taskInfo;
    mach_msg_type_number_t infoCount = TASK_BASIC_INFO_COUNT;
    kern_return_t kernReturn = task_info(mach_task_self(),
                                         TASK_BASIC_INFO,
                                         (task_info_t)&taskInfo,
                                         &infoCount);
    
    if (kernReturn != KERN_SUCCESS)
    {
        return NSNotFound;
    }
    
    return taskInfo.resident_size;
}

@end
