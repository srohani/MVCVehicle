//
//  Car.m
//  Vehicles
//
//  Created by Samer Rohani on 2015-10-25.
//  Copyright © 2015 Designated Nerd Software. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)init
{
    self = [super init];
    if (self) {
        //since all cars have wheels we can set this car to
        //init 4 wheels for every instance of this car
        
        self.numberOfWheels = 4;
    }
    return self;
}


//this is a private method
- (NSString *)start
{
    return [NSString stringWithFormat:@"Start power source %@.", self.powerSource];
}


//this is super class overrides

- (NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ %@ Then depress gas pedal.", [self start], [self changeGears:@"Forward"]];
}

- (NSString *)goBackward
{
    return [NSString stringWithFormat:@"%@ %@ Check your rear view mirror. Then depress gas pedal.", [self start], [self changeGears:@"Reverse"]];
}

- (NSString *)stopMoving
{
    return [NSString stringWithFormat:@"Depress brake pedal. %@", [self changeGears:@"Park"]];
}

- (NSString *)makeNoise
{
    return @"Beep beep!";
}






@end
