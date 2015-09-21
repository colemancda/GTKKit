#import <ObjFW/ObjFW.h>

#import <gtk/gtk.h>

#import "GTKContainer.h"
#import "GTKWindow.h"

OF_ASSUME_NONNULL_BEGIN

@interface GTKWindow (Properties)
@property (copy) OFString *title;
@property (assign) bool resizable;
@property (assign) bool modal;
@property (assign) of_point_t position;
@property (copy) GTKWindow *transientForWindow;
@property (assign) bool destroyWithParent;
@property (readonly) bool maximized;
@property (assign) bool decorated;
@property (assign) bool deletable;
@property (readonly) bool active;
@end

OF_ASSUME_NONNULL_END
