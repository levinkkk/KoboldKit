//
//  KKNodeModel.m
//  KoboldKit
//
//  Created by Steffen Itterheim on 14.06.13.
//  Copyright (c) 2013 Steffen Itterheim. All rights reserved.
//

#import "KKNodeModel.h"
#import "KKMutableNumber.h"

@implementation KKNodeModel

#pragma mark Key/Value Model
-(void) setValue:(id)value forKey:(NSString*)key
{
	if (_keyedValues == nil)
	{
		_keyedValues = [NSMutableDictionary dictionary];
	}
	
	[_keyedValues setValue:value forKey:key];
}

#pragma mark BOOL
-(void) setBool:(BOOL)boolValue forKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	if (value)
	{
		value.boolValue = boolValue;
	}
	else
	{
		[self setValue:[[KKMutableNumber alloc] initWithBool:boolValue] forKey:key];
	}
}

-(BOOL) boolForKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	return value ? value.boolValue : NO;
}

#pragma mark float
-(void) setFloat:(float)floatValue forKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	if (value)
	{
		value.floatValue = floatValue;
	}
	else
	{
		[self setValue:[[KKMutableNumber alloc] initWithFloat:floatValue] forKey:key];
	}
}

-(float) floatForKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	return value ? value.floatValue : 0.0f;
}

#pragma mark double
-(void) setDouble:(double)doubleValue forKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	if (value)
	{
		value.doubleValue = doubleValue;
	}
	else
	{
		[self setValue:[[KKMutableNumber alloc] initWithDouble:doubleValue] forKey:key];
	}
}

-(double) doubleForKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	return value ? value.doubleValue : 0.0;
}

#pragma mark int32
-(void) setInt32:(int32_t)int32Value forKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	if (value)
	{
		value.intValue = int32Value;
	}
	else
	{
		[self setValue:[[KKMutableNumber alloc] initWithInt:int32Value] forKey:key];
	}
}

-(int32_t) int32ForKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	return value ? value.intValue : 0;
}

-(void) setUnsignedInt32:(uint32_t)unsignedInt32Value forKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	if (value)
	{
		value.unsignedIntValue = unsignedInt32Value;
	}
	else
	{
		[self setValue:[[KKMutableNumber alloc] initWithUnsignedInt:unsignedInt32Value] forKey:key];
	}
}

-(uint32_t) unsignedInt32ForKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	return value ? value.unsignedIntValue : 0;
}

#pragma mark int64
-(void) setInt64:(int64_t)int64Value forKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	if (value)
	{
		value.longLongValue = int64Value;
	}
	else
	{
		[self setValue:[[KKMutableNumber alloc] initWithLongLong:int64Value] forKey:key];
	}
}

-(int64_t) int64ForKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	return value ? value.longLongValue : 0;
}

-(void) setUnsignedInt64:(uint64_t)unsignedInt64Value forKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	if (value)
	{
		value.unsignedLongLongValue = unsignedInt64Value;
	}
	else
	{
		[self setValue:[[KKMutableNumber alloc] initWithUnsignedLongLong:unsignedInt64Value] forKey:key];
	}
}

-(uint64_t) unsignedInt64ForKey:(NSString*)key
{
	KKMutableNumber* value = [_keyedValues valueForKey:key];
	return value ? value.unsignedLongLongValue : 0;
}

-(KKMutableNumber*) mutableNumberForKey:(NSString*)key
{
	return [_keyedValues valueForKey:key];
}

#pragma mark object

-(void) setObject:(id)object forKey:(NSString*)key
{
	if (object == nil)
	{
		[_keyedValues removeObjectForKey:key];
	}
	else
	{
		[_keyedValues setObject:object forKey:key];
	}
}

-(id) objectForKey:(NSString*)key
{
	return [_keyedValues objectForKey:key];
}

#pragma mark !! Update methods below whenever class layout changes !!
#pragma mark NSCoding

// to be overridden by concrete implementation
-(id) initWithCoder:(NSCoder*)aDecoder
{
	[NSException raise:NSInternalInconsistencyException format:@"not yet implemented"];
	return nil;
}

-(void) encodeWithCoder:(NSCoder*)aCoder
{
	[NSException raise:NSInternalInconsistencyException format:@"not yet implemented"];
}

#pragma mark NSCopying

-(instancetype) copyWithZone:(NSZone *)zone
{
	[NSException raise:NSInternalInconsistencyException format:@"not yet implemented"];
	return nil;
}

#pragma mark Equality

@end