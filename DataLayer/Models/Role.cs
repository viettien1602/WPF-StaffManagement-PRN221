using System;
using System.Collections.Generic;

namespace DataLayer.Models;

public partial class Role
{
    public string RoleId { get; set; } = null!;

    public string? RoleName { get; set; }

    public string? Description { get; set; }

    public bool? Status { get; set; }

    public virtual ICollection<User> Users { get; set; } = new List<User>();
}
