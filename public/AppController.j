/*
 * AppController.j
 * yawo
 *
 * Created by You on October 18, 2012.
 * Copyright 2012, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView],
        // load the wallpaper in the Resources directory
        mainBundle = [CPBundle mainBundle],
        imgPath = [mainBundle pathForResource:"wallpaper.jpg"],
        img = [[CPImage alloc] initWithContentsOfFile:imgPath],
        backgroundView = [[CPImageView alloc] initWithFrame:CGRectMake(0, 0, 1280, 800)];

    [backgroundView setImage:img];
    [contentView addSubview:backgroundView];
    [theWindow orderFront:self];

    // Uncomment the following line to turn on the standard menu bar.
    // [CPMenu setMenuBarVisible:YES];
}

@end
