#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKGrid.h>

@implementation GTKGrid

- (id)createWidget {
	widget = gtk_grid_new();
	return self;
}

@end
