#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKWidget.h>
#import <GTKKit/typedefs.h>

@implementation GTKWidget {
	of_dimension_t _defaultSize;
}

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
		[self onDestroy: ^{}];
	}
	return self;
}

- (id)createWidget {
	return self;
}

- (of_dimension_t)defaultSize {
	return _defaultSize;
}

- (void)setDefaultSize:(of_dimension_t)size {
	gtk_window_set_default_size (GTK_WINDOW (self.widget), (int) size.width, (int) size.height);
}

@end

static void widgetDestroyed(GtkWidget *widget, GTKWidget *sender) {
	GTKCallback callback = [sender destroyedCallback];
	callback(sender);
}
