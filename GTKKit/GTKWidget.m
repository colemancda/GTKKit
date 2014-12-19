#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKWidget.h>
#import <GTKKit/typedefs.h>

@implementation GTKWidget

+ (id)new {
	return [[self alloc] init];
}

+ (id)newFromGtkWidget:(GtkWidget *)w {
	GTKWidget *newWidget = [self new];
	[newWidget widget: w];
	return newWidget;
}

- (id)init {
	self = [super init];
	if (self) {
		[self createWidget];
		g_signal_connect(GTK_WIDGET (widget), "destroy", G_CALLBACK (widgetDestroyed), (__bridge void*) self);
		destroyedCallback = ^{};
	}
	return self;
}

- (id)createWidget {
	return self;
}

- (GtkWidget *)widget {
	return GTK_WIDGET (widget);
}

- (id)widget:(GtkWidget *)w {
	widget = w;
	return self;
}

- (GTKCallback)destroyedCallback {
	return destroyedCallback;
}
 
- (id)onDestroy:(GTKCallback) callbackBlock {
	destroyedCallback = callbackBlock;
	return self;
}

@end

static void widgetDestroyed(GtkWidget *widget, GTKWidget *sender) {
	GTKCallback callback = [sender destroyedCallback];
	callback(sender);
}
