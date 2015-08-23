#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "GTKWidget.h"
#import "typedefs.h"

static void widgetDestroyed(GtkWidget *widget, GTKWidget *sender) {
	if (sender.onDestroy)
		sender.onDestroy(sender);
}

@implementation GTKWidget

+ (id)new {
	return [[self alloc] init];
}

+ (id)widgetFromGtkWidget:(GtkWidget *)w {
	GTKWidget *newWidget = [self new];
	[newWidget widget: w];
	return newWidget;
}

- (id)init {
	self = [super init];
	if (self) {
		[self createWidget];
		g_signal_connect(GTK_WIDGET (self.widget), "destroy", G_CALLBACK (widgetDestroyed), (__bridge void*) self);
	}
	return self;
}

- (id)createWidget {
	return self;
}

@end
