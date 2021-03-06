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

#import "MSOneNoteModels.h"

/**
* The implementation file for type MSOneNotePage.
*/

@implementation MSOneNotePage	

@synthesize odataType = _odataType;
@synthesize title = _title;
@synthesize createdByAppId = _createdByAppId;
@synthesize links = _links;
@synthesize contentUrl = _contentUrl;
@synthesize content = _content;
@synthesize lastModifiedTime = _lastModifiedTime;
@synthesize id = _id;
@synthesize self = _self;
@synthesize createdTime = _createdTime;
@synthesize parentSection = _parentSection;
@synthesize parentNotebook = _parentNotebook;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OneNote.Api.Page";
    }

	return self;
}

@end