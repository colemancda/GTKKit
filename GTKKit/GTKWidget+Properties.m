#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKWidget+Properties.h>
#import <GTKKit/GTKWidget.h>

@implementation GTKWidget (Properties)

- (id)name:(NSString *)name {
	gtk_widget_set_name(GTK_WIDGET (self.widget), [name UTF8String]);
	return self;
}

- (NSString *)name {
	const char* widgetName = gtk_widget_get_name(GTK_WIDGET (self.widget));
	return [NSString stringWithUTF8String: widgetName];
}

- (bool)isFocus {
	return gtk_widget_is_focus (GTK_WIDGET (self.widget));
}

- (id)sensitive:(bool)sensitive {
	gtk_widget_set_sensitive (GTK_WIDGET (self.widget), sensitive);
	return self;
}

- (bool)sensitive {
	return gtk_widget_get_sensitive (GTK_WIDGET (self.widget));
}

- (bool)effectiveSensitivity {
	return gtk_widget_is_sensitive (GTK_WIDGET (self.widget));
}

- (double)opacity {
	return gtk_widget_get_opacity (GTK_WIDGET (self.widget));
}

- (id)opacity:(double)opacity {
	gtk_widget_set_opacity (GTK_WIDGET (self.widget), opacity);
	return self;
}


@end
