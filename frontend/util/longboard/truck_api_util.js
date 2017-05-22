export const fetchTrucks = () => {
    return $.ajax({
        method: 'GET',
        url: "/api/trucks",
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const fetchTruck = (truck_id) => {
    return $.ajax({
        method: 'GET',
        url: `/api/trucks/${truck_id}`,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};
