//
//  main.m
//  PCalc
//
//  Created by Pedro Henrique on 9/6/12.
//  Copyright (c) 2012 Pedro Henrique. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}
