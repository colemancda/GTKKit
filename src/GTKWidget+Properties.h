#import <ObjFW/ObjFW.h>

#import <gtk/gtk.h>

#import "GTKWidget.h"

OF_ASSUME_NONNULL_BEGIN

@interface GTKWidget (Properties)
@property (assign) OFString *name;
@property bool sensitive;
@property (readonly) bool effectiveSensitivity;
@property double opacity;
@property (readonly) bool isFocus;
@end

OF_ASSUME_NONNULL_END
