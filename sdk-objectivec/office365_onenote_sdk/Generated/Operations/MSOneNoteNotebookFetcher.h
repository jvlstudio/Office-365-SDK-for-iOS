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

@class MSOneNoteSectionFetcher;
@class MSOneNoteSectionCollectionFetcher;
@class MSOneNoteSectionGroupFetcher;
@class MSOneNoteSectionGroupCollectionFetcher;
@class MSOneNoteNotebookOperations;

#import <office365_odata_base/office365_odata_base.h>
#import "MSOneNoteModels.h"

/**
* The header for type MSOneNoteNotebookFetcher.
*/

@protocol MSOneNoteNotebookFetcher<MSODataEntityFetcher, MSODataMultipartCollectionFetcher>

@optional

- (NSURLSessionTask *) readWithCallback:(void (^)(MSOneNoteNotebook *notebook, MSODataException *exception))callback;
- (id<MSOneNoteNotebookFetcher>)addCustomParametersWithName:(NSString *)name value:(id)value;
- (id<MSOneNoteNotebookFetcher>)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (id<MSOneNoteNotebookFetcher>)select:(NSString *)params;
- (id<MSOneNoteNotebookFetcher>)expand:(NSString *)value;

@required

@property (copy, nonatomic, readonly) MSOneNoteNotebookOperations *operations;

- (MSOneNoteSectionCollectionFetcher *)getsections;
- (MSOneNoteSectionFetcher *) getsectionsById:(NSString*)_id;
- (MSOneNoteSectionGroupCollectionFetcher *)getsectionGroups;
- (MSOneNoteSectionGroupFetcher *) getsectionGroupsById:(NSString*)_id;

@end

@interface MSOneNoteNotebookFetcher : MSODataEntityFetcher<MSOneNoteNotebookFetcher>

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSODataExecutable>)parent;
- (NSURLSessionTask *) updateNotebook:(MSOneNoteNotebook *)notebook callback:(void (^)(MSOneNoteNotebook *notebook, MSODataException *error))callback;
- (NSURLSessionTask *) deleteNotebook:(void (^)(int status, MSODataException *exception))callback;

@end