//
//  PCEAppDelegate.m
//  UW Demo 1
//
//  Created by Martin Nash on 7/2/14.
//  Copyright (c) 2014 Martin Nash (UW). All rights reserved.
//

#import "PCEAppDelegate.h"

@implementation PCEAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.theArray = [[NSMutableArray alloc] init];
    
//    NSArray *voices = [NSSpeechSynthesizer availableVoices];
//    NSString *myVoice = voices[45];
    self.synthesizer = [[NSSpeechSynthesizer alloc] initWithVoice:@"com.apple.speech.synthesis.voice.Zarvox"];
    self.synthesizer.delegate = self;
}

- (IBAction)helloButtonPushed:(id)sender
{
    [[self theInputField] setStringValue: @"Hello"];
}

-(IBAction)goodbyeButtonPressed:(id)sender
{
    NSString *theString = _theInputField.stringValue;
    NSString *theMethodString = [self.theInputField stringValue];
    NSLog(@"%@", theString);
    NSLog(@"%@", theMethodString);
}

-(IBAction)recordInput:(id)sender
{
    // get current input
    NSString *currentInput = self.theInputField.stringValue;
    [self.theArray addObject:currentInput];
    NSLog(@"%@", self.theArray);
}

-(IBAction)speakInput:(id)sender
{
    [self.synthesizer startSpeakingString:self.theInputField.stringValue];
}

- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender didFinishSpeaking:(BOOL)finishedSpeaking
{
    NSLog(@"Stopped speaking");
}


@end
