export const login = (user) => {
    return $.ajax({
        method: "POST",
        url: "/api/sessions",
        data: user,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const logout = () => {
    return $.ajax({
        method: "DELETE",
        url: "/api/sessions",
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const signup = (user) => {
    return $.ajax({
        method: "POST",
        url: "/api/users",
        data: user,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const updateUser = (user) => {
    return $.ajax({
        method: "PATCH",
        url: `/api/users/${user.id}`,
        data: user,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const getCart = () => {
    return $.ajax({
        method: "GET",
        url: `/carts/1`,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const getAllCarts = () => {
    return $.ajax({
        method: "GET",
        url: `/carts`,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const addToCart = (product) => {
    return $.ajax({
        method: "POST",
        url: "/order_items",
        data: product,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const updateCartItem = (order_item, id) => {
    return $.ajax({
        method: "PATCH",
        url: `/order_items/${id}`,
        data: order_item,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const deleteCartItem = (id) => {
    return $.ajax({
        method: "DELETE",
        url: `/order_items/${id}`,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};
