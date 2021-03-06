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

@class MSGraphUserFetcher;
@class MSGraphItemFetcher;
@class MSGraphItemCollectionFetcher;
@class MSGraphFileFetcher;
@class MSGraphFolderFetcher;
@class MSGraphItemOperations;

#import <office365_odata_base/office365_odata_base.h>
#import "MSGraphModels.h"

/**
* The header for type MSGraphItemFetcher.
*/

@protocol MSGraphItemFetcher<MSODataEntityFetcher>

@optional

- (NSURLSessionTask *) readWithCallback:(void (^)(MSGraphItem *item, MSODataException *exception))callback;
- (id<MSGraphItemFetcher>)addCustomParametersWithName:(NSString *)name value:(id)value;
- (id<MSGraphItemFetcher>)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (id<MSGraphItemFetcher>)select:(NSString *)params;
- (id<MSGraphItemFetcher>)expand:(NSString *)value;

@required

@property (copy, nonatomic, readonly) MSGraphItemOperations *operations;

- (MSGraphUserFetcher *)getcreatedByUser;
- (MSGraphUserFetcher *)getlastModifiedByUser;
- (MSGraphItemCollectionFetcher *)getchildren;
- (MSGraphItemFetcher *) getchildrenById:(NSString*)_id;
- (MSGraphFileFetcher *)asFile;	
- (MSGraphFolderFetcher *)asFolder;	

@end

@interface MSGraphItemFetcher : MSODataEntityFetcher<MSGraphItemFetcher>

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSODataExecutable>)parent;
- (NSURLSessionTask *) updateItem:(MSGraphItem *)item callback:(void (^)(MSGraphItem *item, MSODataException *error))callback;
- (NSURLSessionTask *) deleteItem:(void (^)(int status, MSODataException *exception))callback;

@end