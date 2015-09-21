#import <ObjFW/ObjFW.h>

#import <gtk/gtk.h>

#import "GTKFrame.h"

OF_ASSUME_NONNULL_BEGIN

@interface GTKFrame (Properties)
@property (copy) OFString *label;
@property (strong) GTKWidget *labelWidget;
@property (assign) float xAlign;
@property (assign) float yAlign;
@end

OF_ASSUME_NONNULL_END
