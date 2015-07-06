#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKWindow.h>

@implementation GTKWindow

- (id)createWidget {
	self.widget = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	return self;
}

@end
