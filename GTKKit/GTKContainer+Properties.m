#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKContainer+Properties.h>

@implementation GTKContainer (Properties)

- (id)borderWidth:(unsigned int)borderWidth {
	gtk_container_set_border_width (GTK_CONTAINER (widget), borderWidth);
	return self;
}

- (unsigned int)borderWidth {
	return gtk_container_get_border_width (GTK_CONTAINER (widget));
}

@end
