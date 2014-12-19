#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKWidget.h>
#import <GTKKit/GTKWidget+Actions.h>

@implementation GTKWidget (Actions)

- (id)show {
	gtk_widget_show (GTK_WIDGET (widget));
	return self;
}

- (id)showAll {
	gtk_widget_show_all (GTK_WIDGET (widget));
	return self;
}

- (id)destroy {
	gtk_widget_destroy (GTK_WIDGET (widget));
	return self;
}

- (id)hide {
	gtk_widget_hide (GTK_WIDGET (widget));
	return self;
}

- (bool)activate {
	return gtk_widget_activate (GTK_WIDGET (widget));
} 

- (id)grabFocus {
	gtk_widget_grab_focus (GTK_WIDGET (widget));
	return self;
}

- (id)grabDefault {
	gtk_widget_grab_default (GTK_WIDGET (widget));
	return self;
}

@end
