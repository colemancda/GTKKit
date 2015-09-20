#import <ObjFW/ObjFW.h>

#import <gtk/gtk.h>

#import "GTKContainer.h"
#import "GTKWindow.h"

OF_ASSUME_NONNULL_BEGIN

@interface GTKWindow (Properties)
@property (assign) OFString *title;
@property bool resizable;
@property bool modal;
@property of_point_t position;
@property (assign) GTKWindow *transientForWindow;
@property bool destroyWithParent;
@property (readonly) bool maximized;
@property bool decorated;
@property bool deletable;
@property (readonly) bool active;
@end

OF_ASSUME_NONNULL_END
