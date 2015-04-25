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

#import "MSOutlookServicesModels.h"

/**
* The implementation file for type RecurrencePattern.
*/

@implementation MSOutlookServicesRecurrencePattern	

@synthesize odataType = _odataType;
@synthesize Type = _Type;
@synthesize Interval = _Interval;
@synthesize Month = _Month;
@synthesize DayOfMonth = _DayOfMonth;
@synthesize DaysOfWeek = _DaysOfWeek;
@synthesize FirstDayOfWeek = _FirstDayOfWeek;
@synthesize Index = _Index;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.RecurrencePattern";
	}

	return self;
}

- (void)setTypeString:(NSString *)value {

	if ([value isEqualToString:@"Daily"]) {

		self.Type = MSOutlookServices_RecurrencePatternType_Daily;
	}

	if ([value isEqualToString:@"Weekly"]) {

		self.Type = MSOutlookServices_RecurrencePatternType_Weekly;
	}

	if ([value isEqualToString:@"AbsoluteMonthly"]) {

		self.Type = MSOutlookServices_RecurrencePatternType_AbsoluteMonthly;
	}

	if ([value isEqualToString:@"RelativeMonthly"]) {

		self.Type = MSOutlookServices_RecurrencePatternType_RelativeMonthly;
	}

	if ([value isEqualToString:@"AbsoluteYearly"]) {

		self.Type = MSOutlookServices_RecurrencePatternType_AbsoluteYearly;
	}

	if ([value isEqualToString:@"RelativeYearly"]) {

		self.Type = MSOutlookServices_RecurrencePatternType_RelativeYearly;
	}
}
- (void)setFirstDayOfWeekString:(NSString *)value {

	if ([value isEqualToString:@"Sunday"]) {

		self.FirstDayOfWeek = MSOutlookServices_DayOfWeek_Sunday;
	}

	if ([value isEqualToString:@"Monday"]) {

		self.FirstDayOfWeek = MSOutlookServices_DayOfWeek_Monday;
	}

	if ([value isEqualToString:@"Tuesday"]) {

		self.FirstDayOfWeek = MSOutlookServices_DayOfWeek_Tuesday;
	}

	if ([value isEqualToString:@"Wednesday"]) {

		self.FirstDayOfWeek = MSOutlookServices_DayOfWeek_Wednesday;
	}

	if ([value isEqualToString:@"Thursday"]) {

		self.FirstDayOfWeek = MSOutlookServices_DayOfWeek_Thursday;
	}

	if ([value isEqualToString:@"Friday"]) {

		self.FirstDayOfWeek = MSOutlookServices_DayOfWeek_Friday;
	}

	if ([value isEqualToString:@"Saturday"]) {

		self.FirstDayOfWeek = MSOutlookServices_DayOfWeek_Saturday;
	}
}
- (void)setIndexString:(NSString *)value {

	if ([value isEqualToString:@"First"]) {

		self.Index = MSOutlookServices_WeekIndex_First;
	}

	if ([value isEqualToString:@"Second"]) {

		self.Index = MSOutlookServices_WeekIndex_Second;
	}

	if ([value isEqualToString:@"Third"]) {

		self.Index = MSOutlookServices_WeekIndex_Third;
	}

	if ([value isEqualToString:@"Fourth"]) {

		self.Index = MSOutlookServices_WeekIndex_Fourth;
	}

	if ([value isEqualToString:@"Last"]) {

		self.Index = MSOutlookServices_WeekIndex_Last;
	}
}

@end