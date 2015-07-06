#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKBin.h>
#import <GTKKit/typedefs.h>
#import <GTKKit/GTKButtonDelegate.h>

@interface GTKButton : GTKBin {

	GTKCallback clickedCallback;
	id<GTKButtonDelegate> OF_NULLABLE delegate;
}

- (id OF_NONNULL)onClick:(GTKCallback OF_NULLABLE)callback;

- (GTKCallback OF_NONNULL)clickedCallback;

- (id OF_NONNULL)delegate:(id<GTKButtonDelegate> OF_NULLABLE)d;

- (void)handleDelegate;

@end

static void buttonClicked(GtkWidget OF_NONNULL *button, GTKButton OF_NONNULL *sender);
