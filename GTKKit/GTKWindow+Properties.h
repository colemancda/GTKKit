#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKContainer.h>
#import <GTKKit/GTKWindow.h>

@interface GTKWindow (Properties)

@property (assign) OFString *title;
@property (assign) bool resizable;
@property (assign) bool modal;
@property (assign) of_point_t position;

@property (assign) GTKWindow *transientForWindow;
- (GTKWindow *)transientForWindow UNAVAILABLE_ATTRIBUTE;

@property (assign) bool destroyWithParent;
- (bool)destroyWithParent UNAVAILABLE_ATTRIBUTE;

@property (assign, readonly) bool maximized;
- (bool)setMaximized UNAVAILABLE_ATTRIBUTE;

@property (assign) bool decorated;
- (bool)decorated UNAVAILABLE_ATTRIBUTE;

@property (assign) bool deletable;
- (bool)deletable UNAVAILABLE_ATTRIBUTE;

@property (assign, readonly) bool active;
- (bool)setActive UNAVAILABLE_ATTRIBUTE;

@end
