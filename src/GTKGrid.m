#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "GTKGrid.h"

@implementation GTKGrid

- (id)createWidget {
	self.widget = gtk_grid_new();
	return self;
}

@end
