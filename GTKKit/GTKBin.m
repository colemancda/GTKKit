#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKBin.h>

@implementation GTKBin

- (id)createWidget {
	return self;
}

- (GTKWidget *)childWidget {
	GtkWidget *w = gtk_bin_get_child (GTK_BIN (widget));
	GTKWidget *newWidget = [GTKWidget newFromGtkWidget: w];
	return newWidget;
}

@end
