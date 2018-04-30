//
//  CFile.m
//  CAndSwift
//
//  Created by 盘国权 on 2018/4/29.
//  Copyright © 2018年 pgq. All rights reserved.
//

#import "CFile.h"

const int global_ten = 10;

PQButtonColor const PQButtonColorRed = @"Red";
PQButtonColor const PQButtonColorGreen = @"Green";
PQButtonColor const PQButtonColorBlue = @"Blue";



Shape const ShapeCircle = 1;
Shape const ShapeTriangle = 2;
Shape const ShapeSquare = 3; 


int add(int a, int b){
    return a + b;
}


int vsum(int count, va_list numbers){
    int i = 0, sum = 0;
    while (i < count) {
        sum += va_arg(numbers, int);
        ++i;
    }
    return sum;
}
int sum(int count, ...){
    int sum = 0;
    va_list ap;
    va_start(ap, count);
    sum = vsum(count, ap);
    return sum;
}


Location moveX(Location loc,int delta){
    loc.x += delta;
    return loc;
}

Location moveY(Location loc,int delta){
    loc.y += delta;
    return loc;
}

Location createLocation(int xy){
    Location loc = { .x = xy, .y = xy };
    return loc;
}


Location origin = { .x = 0, .y = 0 };
Location getOrigin(){
    return origin;
}

Location setOrigin(Location newOrigin){
    origin = newOrigin;
    return origin;
}



