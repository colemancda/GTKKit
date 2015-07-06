#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKButton.h>
#import <GTKKit/GTKButtonDelegate.h>

@implementation GTKButton

- (id)createWidget {
	self.widget = gtk_button_new ();
	return self;
}

- (id)init {
	self = [super init];
	g_signal_connect(GTK_WIDGET (self.widget), "clicked", G_CALLBACK (buttonClicked), (__bridge void*) self);
	self.clickedCallback = ^ {};
	return self;
}

- (void)handleDelegate {
	if (self.delegate != NULL) {
		[self.delegate buttonClicked];
	}
}

@end

static void buttonClicked(GtkWidget *button, GTKButton *sender) {
	if (sender.delegate != NULL)
		[sender.delegate buttonClicked];
	[sender clickedCallback](sender);
}
