#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKBin.h>
#import <GTKKit/typedefs.h>
#import <GTKKit/GTKButtonDelegate.h>

@interface GTKButton : GTKBin

@property (nullable, assign, getter=clickedCallback, setter=onClick:) GTKCallback clickedCallback;
@property (nullable, weak) id<GTKButtonDelegate> delegate;

@end

static void buttonClicked(GtkWidget OF_NONNULL *button, GTKButton OF_NONNULL *sender);
