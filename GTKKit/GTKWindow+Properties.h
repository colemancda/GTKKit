#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKContainer.h>
#import <GTKKit/GTKWindow.h>

@interface GTKWindow (Properties)

@property (assign) OFString *title;
@property (assign) bool resizable;

- (id)width:(int)width height:(int)height;

- (bool)modal;

- (id)modal:(bool)modal;

- (of_point_t)position;

- (id)position:(of_point_t)position;

- (id)transientForWindow:(GTKWindow *)window;

- (id)destroyWithParent:(bool)setting;

- (bool)maximized;

- (id)decorated:(bool)setting;

- (id)deletable:(bool)setting;

- (bool)active;

@end
