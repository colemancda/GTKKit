#import <ObjFW/ObjFW.h>

#import <gtk/gtk.h>

#import "GTKWidget.h"

OF_ASSUME_NONNULL_BEGIN

@interface GTKWidget (Properties)
@property (copy) OFString *name;
@property (assign) bool sensitive;
@property (readonly) bool effectiveSensitivity;
@property (assign) double opacity;
@property (readonly) bool isFocus;
@end

OF_ASSUME_NONNULL_END
