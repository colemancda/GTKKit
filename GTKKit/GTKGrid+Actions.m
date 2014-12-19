#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKGrid+Actions.h>

@implementation GTKGrid (Actions)

- (id)attachWidget:(GTKWidget *)childWidget left:(int)left top:(int)top width:(int)width height:(int)height {
	gtk_grid_attach (
		GTK_GRID (widget),
		GTK_WIDGET ([childWidget widget]),
		left,
		top,
		width,
		height);
	return self;
}

- (id)attachWidget:(GTKWidget *)childWidget toWidget:(GTKWidget *)siblingWidget onSide:(GtkPositionType)side width:(int)width height:(int)height {
	gtk_grid_attach_next_to (
		GTK_GRID (widget),
		GTK_WIDGET ([childWidget widget]),
		GTK_WIDGET ([siblingWidget widget]),
		side,
		width,
		height);
	return self;
}

- (id)insertRowAtPosition:(int)position {
	gtk_grid_insert_row (GTK_GRID (widget), position);
	return self;
}

- (id)insertColumnAtPosition:(int)position {
	gtk_grid_insert_column (GTK_GRID (widget), position);
	return self;
}

- (id)removeRow:(int)position {
	gtk_grid_remove_row (GTK_GRID (widget), position);
	return self;
}

- (id)removeColumn:(int)position {
	gtk_grid_remove_column (GTK_GRID (widget), position);
	return self;
}


@end
