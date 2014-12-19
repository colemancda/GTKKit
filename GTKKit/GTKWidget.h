#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/typedefs.h>

/** \brief Widget parent class.
 *
 * GTKWidget is the parent class for all the wrapper classes found in GTKKit.
 * It is not to be instantiated itself, but the methods it implements are
 * critical for all other UI* classes.
 */
@interface GTKWidget : OFObject {
	GtkWidget *widget;
	GTKCallback destroyedCallback;
}

/**
 * Create a new widget.
 *
 * @returns an initialized widget object.
 */
+ (id)new;

/**
 * Create a new widget object using a raw C GtkWidget.
 *
 * @param w the GtkWidget to wrap in a widget instance.
 * @returns an initialized widget object.
 */
+ (id)newFromGtkWidget:(GtkWidget *)w;

- (id)init;

- (id)createWidget;

/**
 * Get the raw GtkWidget the object is wrapped around.
 *
 * @returns the GtkWidget the object wraps.
 */
- (GtkWidget *)widget;

- (id)widget:(GtkWidget *)w;

/**
 * Get the callback block associated with the destruction of the widget.
 *
 * @returns the UICallback block associated with the destruction of the widget.
 */
- (GTKCallback)destroyedCallback;
 

/**
 * Set the callback block associated with the destruction of the widget.
 *
 * @returns self
 */
- (id)onDestroy: (GTKCallback) function;

@end

static void widgetDestroyed(GtkWidget *widget, GTKWidget *sender);
