#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKBin.h>
#import <GTKKit/typedefs.h>
#import <GTKKit/Protocols/GTKButtonDelegate.h>

@interface GTKButton : GTKBin

@property (copy, nonnull) GTKCallback onClick;
@property (nullable, unsafe_unretained) id<GTKButtonDelegate> delegate;

@end

static void buttonClicked(GtkWidget* OF_NONNULL button, GTKButton* OF_NONNULL sender);
