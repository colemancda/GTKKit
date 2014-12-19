#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKButton.h>

@implementation GTKButton

- (id)createWidget {
	widget = gtk_button_new ();
	return self;
}

- (id)init {
	self = [super init];
	g_signal_connect(GTK_WIDGET (widget), "clicked", G_CALLBACK (buttonClicked), (__bridge void*) self);
	clickedCallback = ^ {};
	return self;
}

- (id)onClick:(GTKCallback)callback {
	clickedCallback = callback;
	return self;
}

- (GTKCallback)clickedCallback {
	return clickedCallback;
}

@end

static void buttonClicked(GtkWidget *button, GTKButton *sender) {
	GTKCallback callback = [sender clickedCallback];
	callback(sender);
}
