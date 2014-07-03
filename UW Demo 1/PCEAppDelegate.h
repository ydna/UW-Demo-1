//
//  PCEAppDelegate.h
//  UW Demo 1
//
//  Created by Martin Nash on 7/2/14.
//  Copyright (c) 2014 Martin Nash (UW). All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PCEAppDelegate : NSObject <NSApplicationDelegate, NSSpeechSynthesizerDelegate>

@property (assign) IBOutlet NSWindow *window;
@property IBOutlet NSTextField *theInputField;
@property NSMutableArray *theArray;
@property NSSpeechSynthesizer *synthesizer;

@end
