#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "GTKWindow.h"

@implementation GTKWindow

@synthesize defaultSize=_defaultSize;
@synthesize size=_size;

- (id)createWidget {
	self.widget = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	return self;
}

- (of_dimension_t)defaultSize {
	return _defaultSize;
}

- (void)setDefaultSize:(of_dimension_t)size {
	_defaultSize = size;
	gtk_window_set_default_size (GTK_WINDOW (self.widget), (int) size.width, (int) size.height);
}

- (of_dimension_t)size {
	return _size;
}

- (void)setSize:(of_dimension_t)size {
	_size = size;
	gtk_window_resize (GTK_WINDOW (self.widget), (int) size.width, (int) size.height);
}

@end
