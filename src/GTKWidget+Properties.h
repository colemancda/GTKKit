#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "GTKWidget.h"

@interface GTKWidget (Properties)

@property (assign) OFString *name;
@property (assign) bool sensitive;
@property (readonly) bool effectiveSensitivity;
@property (assign) double opacity;
@property (readonly) bool isFocus;

@end
