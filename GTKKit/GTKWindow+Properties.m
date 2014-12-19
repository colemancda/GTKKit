#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKContainer.h>
#import <GTKKit/GTKWindow.h>
#import <GTKKit/GTKWindow+Properties.h>

@implementation GTKWindow (Properties)

- (id)title:(id)title {
	const char * newTitle = [title UTF8String];
	gtk_window_set_title(GTK_WINDOW (widget), newTitle);
	return self;
}

- (id)title {
	const char *title = gtk_window_get_title (GTK_WINDOW (widget));
	return [NSString stringWithUTF8String: title];
}

- (id)resizable:(bool)resizable {
	gtk_window_set_resizable (GTK_WINDOW (widget), resizable);
	return self;
}

- (bool)resizable {
	return gtk_window_get_resizable (GTK_WINDOW (widget));
}

- (id)defaultWidth:(int)width height:(int)height {
	gtk_window_set_default_size (GTK_WINDOW (widget), width, height);
	return self;
}

- (id)width:(int)width height:(int)height {
	gtk_window_resize (GTK_WINDOW (widget), width, height);
	return self;
}

- (bool)modal {
	return gtk_window_get_modal (GTK_WINDOW (widget));
}

- (id)modal:(bool)modal {
	gtk_window_set_modal (GTK_WINDOW (widget), modal);
	return self;
}

- (of_point_t)position {
	int x;
	int y;
	gtk_window_get_position (GTK_WINDOW (widget), &x, &y);
	return of_point (x, y);
}

- (id)position:(of_point_t)position {
	gtk_window_move (GTK_WINDOW (widget), position.x, position.y);
	return self;
}

- (id)transientForWindow:(GTKWindow *)window {
	gtk_window_set_transient_for (GTK_WINDOW (widget), GTK_WINDOW ([window widget]));
	return self;
}

- (id)destroyWithParent:(bool)setting {
	gtk_window_set_destroy_with_parent (GTK_WINDOW (widget), setting);
	return self;
}

- (bool)maximized {
	return gtk_window_is_maximized (GTK_WINDOW (widget));
}

- (id)decorated:(bool)setting {
	gtk_window_set_decorated (GTK_WINDOW (widget), setting);
	return self;
}

- (id)deletable:(bool)setting {
	gtk_window_set_deletable (GTK_WINDOW (widget), setting);
	return self;
}

- (bool)active {
	return gtk_window_is_active (GTK_WINDOW (widget));
}

@end
