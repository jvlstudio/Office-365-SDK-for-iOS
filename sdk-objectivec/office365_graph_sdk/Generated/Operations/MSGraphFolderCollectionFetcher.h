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

@class MSGraphFolderFetcher;

#import <office365_odata_base/office365_odata_base.h>
#import "MSGraphModels.h"

/**
* The header for type MSGraphFolderCollectionFetcher.
*/

@protocol MSGraphFolderCollectionFetcher<MSODataCollectionFetcher>

@optional

- (NSURLSessionTask *)readWithCallback:(void (^)(NSArray<MSGraphFolder> *folders, MSODataException *exception))callback;

- (id<MSGraphFolderCollectionFetcher>)select:(NSString *)params;
- (id<MSGraphFolderCollectionFetcher>)filter:(NSString *)params;
- (id<MSGraphFolderCollectionFetcher>)top:(int)value;
- (id<MSGraphFolderCollectionFetcher>)skip:(int)value;
- (id<MSGraphFolderCollectionFetcher>)expand:(NSString *)value;
- (id<MSGraphFolderCollectionFetcher>)orderBy:(NSString *)params;
- (id<MSGraphFolderCollectionFetcher>)addCustomParametersWithName:(NSString *)name value:(id)value;
- (id<MSGraphFolderCollectionFetcher>)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@required

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSODataExecutable>)parent;
- (MSGraphFolderFetcher *)getById:(NSString *)Id;
- (NSURLSessionTask *)addFolder:(MSGraphFolder *)entity callback:(void (^)(MSGraphFolder *folder, MSODataException *e))callback;

@end

@interface MSGraphFolderCollectionFetcher : MSODataCollectionFetcher<MSGraphFolderCollectionFetcher>

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSODataExecutable>)parent;

@end