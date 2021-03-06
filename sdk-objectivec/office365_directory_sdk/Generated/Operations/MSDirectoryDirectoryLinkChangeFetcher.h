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

@class MSDirectoryDirectoryLinkChangeOperations;

#import <office365_odata_base/office365_odata_base.h>
#import "MSDirectoryModels.h"

/**
* The header for type MSDirectoryDirectoryLinkChangeFetcher.
*/

@protocol MSDirectoryDirectoryLinkChangeFetcher<MSODataEntityFetcher>

@optional

- (NSURLSessionTask *) readWithCallback:(void (^)(MSDirectoryDirectoryLinkChange *directoryLinkChange, MSODataException *exception))callback;
- (id<MSDirectoryDirectoryLinkChangeFetcher>)addCustomParametersWithName:(NSString *)name value:(id)value;
- (id<MSDirectoryDirectoryLinkChangeFetcher>)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (id<MSDirectoryDirectoryLinkChangeFetcher>)select:(NSString *)params;
- (id<MSDirectoryDirectoryLinkChangeFetcher>)expand:(NSString *)value;

@required

@property (copy, nonatomic, readonly) MSDirectoryDirectoryLinkChangeOperations *operations;


@end

@interface MSDirectoryDirectoryLinkChangeFetcher : MSODataEntityFetcher<MSDirectoryDirectoryLinkChangeFetcher>

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSODataExecutable>)parent;
- (NSURLSessionTask *) updateDirectoryLinkChange:(MSDirectoryDirectoryLinkChange *)directoryLinkChange callback:(void (^)(MSDirectoryDirectoryLinkChange *directoryLinkChange, MSODataException *error))callback;
- (NSURLSessionTask *) deleteDirectoryLinkChange:(void (^)(int status, MSODataException *exception))callback;

@end