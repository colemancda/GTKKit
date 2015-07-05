#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKBin.h>
#import <GTKKit/typedefs.h>
#import <GTKKit/GTKButtonDelegate.h>

@interface GTKButton : GTKBin {

	GTKCallback clickedCallback;
	id<GTKButtonDelegate> delegate;
}

- (id)onClick:(GTKCallback)callback;

- (GTKCallback)clickedCallback;

@end

static void buttonClicked(GtkWidget *button, GTKButton *sender);
