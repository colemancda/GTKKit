#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "GTKBin.h"

@implementation GTKBin

- (id)createWidget {
	return self;
}

- (GTKWidget *)childWidget {
	GtkWidget *w = gtk_bin_get_child (GTK_BIN (self.widget));
	GTKWidget *newWidget = [GTKWidget widgetFromGtkWidget: w];
	return newWidget;
}

@end
