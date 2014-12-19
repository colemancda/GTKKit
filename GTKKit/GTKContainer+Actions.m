#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKContainer+Actions.h>

@implementation GTKContainer (Actions)

- (id)addWidget:(GTKWidget *)childWidget {
	gtk_container_add (GTK_CONTAINER (widget), [childWidget widget]);
	return self;
}

- (id)removeWidget:(GTKWidget *)childWidget {
	gtk_container_remove (GTK_CONTAINER (widget), [childWidget widget]);
	return self;
}

- (id)addAll:(NSArray *)childWidgets {
	for (id childWidget in childWidgets) {
		[self addWidget: childWidget];
	}
	return self;
}

@end
