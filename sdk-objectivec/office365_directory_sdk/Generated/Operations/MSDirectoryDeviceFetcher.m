/*******************************************************************************
Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the MIT or Apache License; see LICENSE in the source repository
root for authoritative license information.﻿

**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).
******************************************************************************/

#import "MSDirectoryODataEntities.h"

@implementation MSDirectoryDeviceFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSODataExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSDirectoryDevice class]]) {

		_operations = [[MSDirectoryDeviceOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (NSURLSessionTask *)updateDevice:(id)entity callback:(void (^)(MSDirectoryDevice *device, MSODataException *exception))callback {

	return [super updateEntity:entity callback:callback];
}

- (NSURLSessionTask *)deleteDevice:(void (^)(int status, MSODataException *exception))callback {

	return [super deleteWithCallback:callback];
}

- (MSDirectoryDirectoryObjectCollectionFetcher *)getregisteredOwners {

    return [[MSDirectoryDirectoryObjectCollectionFetcher alloc] initWithUrl:@"registeredOwners" parent:self asClass:[MSDirectoryDirectoryObject class]];
}

- (id<MSDirectoryDirectoryObjectFetcher>)getregisteredOwnersById:(NSString *)_id {

    return [[[MSDirectoryDirectoryObjectCollectionFetcher alloc] initWithUrl:@"registeredOwners" parent:self asClass:[MSDirectoryDirectoryObject class]] getById:_id];
}

- (MSDirectoryDirectoryObjectCollectionFetcher *)getregisteredUsers {

    return [[MSDirectoryDirectoryObjectCollectionFetcher alloc] initWithUrl:@"registeredUsers" parent:self asClass:[MSDirectoryDirectoryObject class]];
}

- (id<MSDirectoryDirectoryObjectFetcher>)getregisteredUsersById:(NSString *)_id {

    return [[[MSDirectoryDirectoryObjectCollectionFetcher alloc] initWithUrl:@"registeredUsers" parent:self asClass:[MSDirectoryDirectoryObject class]] getById:_id];
}

@end