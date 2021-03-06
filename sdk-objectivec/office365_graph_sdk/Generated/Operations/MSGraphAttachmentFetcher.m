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

#import "MSGraphODataEntities.h"

@implementation MSGraphAttachmentFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSODataExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphAttachment class]]) {

		_operations = [[MSGraphAttachmentOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (NSURLSessionTask *)updateAttachment:(id)entity callback:(void (^)(MSGraphAttachment *attachment, MSODataException *exception))callback {

	return [super updateEntity:entity callback:callback];
}

- (NSURLSessionTask *)deleteAttachment:(void (^)(int status, MSODataException *exception))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphFileAttachmentFetcher *)asFileAttachment {

	return [[MSGraphFileAttachmentFetcher alloc] initWithUrl:self.urlComponent parent:self asClass:[MSGraphFileAttachment class]];
}

- (MSGraphItemAttachmentFetcher *)asItemAttachment {

	return [[MSGraphItemAttachmentFetcher alloc] initWithUrl:self.urlComponent parent:self asClass:[MSGraphItemAttachment class]];
}

- (MSGraphReferenceAttachmentFetcher *)asReferenceAttachment {

	return [[MSGraphReferenceAttachmentFetcher alloc] initWithUrl:self.urlComponent parent:self asClass:[MSGraphReferenceAttachment class]];
}

@end