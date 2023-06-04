using System;
using System.Collections.Generic;

namespace DataLayer.Models;

public partial class User
{
    public int UserId { get; set; }

    public string? RoleId { get; set; }

    public string Username { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string Fullname { get; set; } = null!;

    public string? Email { get; set; }

    public string? Phone { get; set; }

    public string? Address { get; set; }

    public bool? Status { get; set; }

    public virtual Role? Role { get; set; }
}
