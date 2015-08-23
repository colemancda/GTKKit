#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "GTKBin.h"
#import "typedefs.h"
#import "Protocols/GTKButtonDelegate.h"

@interface GTKButton : GTKBin

@property (copy, nonnull) GTKCallback onClick;
@property (nullable, unsafe_unretained) id<GTKButtonDelegate> delegate;

@end
