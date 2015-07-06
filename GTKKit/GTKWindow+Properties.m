#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKContainer.h>
#import <GTKKit/GTKWindow.h>
#import <GTKKit/GTKWindow+Properties.h>

@implementation GTKWindow (Properties)

- (void)setTitle:(OFString * OF_NONNULL)title {
	const char * newTitle = [title UTF8String];
	gtk_window_set_title(GTK_WINDOW (self.widget), newTitle);
}

- (OFString * OF_NONNULL)title {
	const char *title = gtk_window_get_title (GTK_WINDOW (self.widget));
	return [OFString stringWithUTF8String: title];
}

- (void)setResizable:(bool)resizable {
	gtk_window_set_resizable (GTK_WINDOW (self.widget), resizable);
}

- (bool)resizable {
	return gtk_window_get_resizable (GTK_WINDOW (self.widget));
}

- (id)width:(int)width height:(int)height {
	gtk_window_resize (GTK_WINDOW (self.widget), width, height);
	return self;
}

- (bool)modal {
	return gtk_window_get_modal (GTK_WINDOW (self.widget));
}

- (id)modal:(bool)modal {
	gtk_window_set_modal (GTK_WINDOW (self.widget), modal);
	return self;
}

- (of_point_t)position {
	int x;
	int y;
	gtk_window_get_position (GTK_WINDOW (self.widget), &x, &y);
	return of_point (x, y);
}

- (id)position:(of_point_t)position {
	gtk_window_move (GTK_WINDOW (self.widget), position.x, position.y);
	return self;
}

- (id)transientForWindow:(GTKWindow *)window {
	gtk_window_set_transient_for (GTK_WINDOW (self.widget), GTK_WINDOW ([window widget]));
	return self;
}

- (id)destroyWithParent:(bool)setting {
	gtk_window_set_destroy_with_parent (GTK_WINDOW (self.widget), setting);
	return self;
}

- (bool)maximized {
	return gtk_window_is_maximized (GTK_WINDOW (self.widget));
}

- (id)decorated:(bool)setting {
	gtk_window_set_decorated (GTK_WINDOW (self.widget), setting);
	return self;
}

- (id)deletable:(bool)setting {
	gtk_window_set_deletable (GTK_WINDOW (self.widget), setting);
	return self;
}

- (bool)active {
	return gtk_window_is_active (GTK_WINDOW (self.widget));
}

@end
