#import <ObjFW/ObjFW.h>

#import <gtk/gtk.h>

#import "GTKButton.h"

OF_ASSUME_NONNULL_BEGIN

@interface GTKButton (Properties)
@property (assign) OFString *label;
@property (assign) GtkReliefStyle reliefStyle;
@end

OF_ASSUME_NONNULL_END
