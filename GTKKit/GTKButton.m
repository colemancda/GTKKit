#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "GTKButton.h"

@implementation GTKButton

- (id)createWidget {
	self.widget = gtk_button_new ();
	return self;
}

- (id)init {
	self = [super init];
	g_signal_connect(GTK_WIDGET (self.widget), "clicked", G_CALLBACK (buttonClicked), (__bridge void*) self);
	return self;
}

@end

static void buttonClicked(GtkWidget *button, GTKButton *sender) {

	if (sender.delegate)
		[sender.delegate buttonClicked: sender];
		
	if (sender.onClick)
		sender.onClick(sender);
}
