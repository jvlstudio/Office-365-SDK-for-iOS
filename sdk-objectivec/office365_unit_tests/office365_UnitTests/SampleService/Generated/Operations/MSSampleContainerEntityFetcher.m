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

#import "MSSampleContainerODataEntities.h"

@implementation MSSampleContainerEntityFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSODataExecutable>)parent {

    self = [super initWithUrl:urlComponent parent:parent asClass:[MSSampleContainerEntity class]];

    _operations = [[MSSampleContainerEntityOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    
    return self;
}

- (NSURLSessionTask *)updateEntity:(id)entity withCallback:(void (^)(MSSampleContainerEntity *entity, MSODataException *exception))callback {

	return [super updateEntity:entity callback:callback];
}

- (NSURLSessionTask *)deleteEntity:(void (^)(int status, MSODataException *exception))callback {

	return [super deleteWithCallback:callback];
}

- (MSSampleContainerAnotherEntityFetcher *)asAnotherEntity {

	return [[MSSampleContainerAnotherEntityFetcher alloc] initWithUrl:self.urlComponent parent:self asClass:[MSSampleContainerAnotherEntity class]];
}
- (MSSampleContainerSampleEntityFetcher *)asSampleEntity {

	return [[MSSampleContainerSampleEntityFetcher alloc] initWithUrl:self.urlComponent parent:self asClass:[MSSampleContainerSampleEntity class]];
}

@end