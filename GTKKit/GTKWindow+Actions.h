#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKContainer.h>
#import <GTKKit/GTKWindow.h>

@interface GTKWindow (Actions)

- (id)present;

- (bool)activateDefaultWidget;

- (id)close;

- (id)minimize;

- (id)unminimize;

- (id)maximize;

- (id)unmaximize;

- (id)fullscreen;

- (id)unfullscreen;

@end
