//
//  CFile.h
//  CAndSwift
//
//  Created by 盘国权 on 2018/4/29.
//  Copyright © 2018年 pgq. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef CFile
#define CFile

#pragma mark - 1 变量引用
const int global_ten;

// NS_STRING_ENUM 通常表示值固定
typedef NSString * PQButtonColor NS_STRING_ENUM;

PQButtonColor const PQButtonColorRed;
PQButtonColor const PQButtonColorGreen;
PQButtonColor const PQButtonColorBlue;

// NS_EXTENSIBLE_STRING_ENUM 表示可扩展
typedef int Shape NS_EXTENSIBLE_STRING_ENUM;

Shape const ShapeCircle;
Shape const ShapeTriangle;
Shape const ShapeSquare;



#pragma mark - 2 函数引用
int add(int a, int b);
int sum(int, ...);
int vsum(int, va_list);


#pragma mark - 3 struct 和 unique 引用

typedef struct{
    int x,y;
}Location;

//为struct添加方法
//ps 因为写的是全局方法，所以要这样子调用，如何变成对象调用呢？
// 使用CF_SWIFT_NAME修饰这个方法，把name变成签名 
Location moveX(Location loc, int delta) CF_SWIFT_NAME(Location.moveX(self:delta:));
Location moveY(Location loc, int delta);

//工厂方法的创建
Location createLocation(int) CF_SWIFT_NAME(Location.init(xy:));

//getter
Location getOrigin(void) CF_SWIFT_NAME(getter:Location.origin());
//setter
Location setOrigin(Location) CF_SWIFT_NAME(setter:Location.origin(newOrigin:));


typedef union {
    char character;
    int code;
} ASCII;


// struct and union
typedef struct {
    union {
        char model;
        int series;
    };
    
    struct {
        double pricing;
        bool isAvailable;
    }info;
    
} Car;


#pragma mark - 4 enum
typedef enum {
    BMW,AUDI,BENZ
}CarType;

/*
 里面有两个参数：
 - 第一个参数是类型
 - 第二个是enum名称
 */
typedef NS_ENUM(int,PQCarType) {
    PQBMW,PQAUDI,PQBENZ
};


#endif
