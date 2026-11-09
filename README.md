<!-- Profile README for github.com/virzak. The "Recently merged" section is rewritten
weekly by .github/workflows/update-upstream.yml; run scripts/update-upstream.sh
to refresh it by hand. -->

### Victor Irzak

.NET developer in Toronto. Most of my work is data access and desktop apps: EF Core, SQL Server, Postgres, WPF and Roslyn source generators. I fix things upstream when I hit them. I founded [Zomp](https://www.zomp.com), which publishes the libraries below.

Available for .NET and open source work: victor@irzak.com

### Libraries

- [efcore-extensions](https://github.com/zompinc/efcore-extensions): window functions for EF Core on SQL Server, Postgres and SQLite [![NuGet downloads](https://img.shields.io/nuget/dt/Zomp.EFCore.WindowFunctions?label=downloads)](https://www.nuget.org/packages/Zomp.EFCore.WindowFunctions)
- [sync-method-generator](https://github.com/zompinc/sync-method-generator): generates sync versions of async methods [![NuGet downloads](https://img.shields.io/nuget/dt/Zomp.SyncMethodGenerator?label=downloads)](https://www.nuget.org/packages/Zomp.SyncMethodGenerator)
- [sign-universal](https://github.com/zompinc/sign-universal): cross-platform Authenticode signing with Azure Key Vault

### Notable upstream work

Data access:

- [dotnet/efcore#39084](https://github.com/dotnet/efcore/pull/39084): fix a negated nullable comparison inside a CASE condition
- [npgsql/efcore.pg#2200](https://github.com/npgsql/efcore.pg/pull/2200): translate `Enumerable.Concat` over bytea to the Postgres `||` operator
- [dotnet/SqlClient#4790](https://github.com/dotnet/SqlClient/pull/4790): move the IdentityModel dependencies into the Extensions.Azure package
- [mini-software/MiniExcel#799](https://github.com/mini-software/MiniExcel/pull/799): replace `Task.Run` wrappers with real asynchronous methods

sync-method-generator in other projects:

- [FluentValidation/FluentValidation#2136](https://github.com/FluentValidation/FluentValidation/pull/2136): remove sync-over-async by generating the sync methods
- [adamhathcock/sharpcompress#1381](https://github.com/adamhathcock/sharpcompress/pull/1381): generate the sync archive entry extensions from the async ones

Runtime and tooling:

- [dotnet/runtime#73708](https://github.com/dotnet/runtime/pull/73708): fix `Stream.Length` on physical drives on Windows, which I reported in [#73669](https://github.com/dotnet/runtime/issues/73669); shipped in .NET 7
- [velopack/velopack#1018](https://github.com/velopack/velopack/pull/1018): fix `--signTemplate` double-escaping on Linux and macOS
- [podman-container-tools/podman#29303](https://github.com/podman-container-tools/podman/pull/29303): report the cgroup driver correctly for rootless cgroupfs
- [ookii-dialogs/ookii-dialogs-wpf#84](https://github.com/ookii-dialogs/ookii-dialogs-wpf/pull/84): generate the P/Invoke layer with CsWin32

### Recently merged

<!-- upstream:start -->

73 merged pull requests in projects I don't own. The latest:

- [dotnet/runtime#137159](https://github.com/dotnet/runtime/pull/137159): Bundle the CoreCLR runtime pack for linux-bionic
- [podman-container-tools/podman#30109](https://github.com/podman-container-tools/podman/pull/30109): Revert rejected container updates and skip no-op pids updates
- [dotnet/SqlClient#4798](https://github.com/dotnet/SqlClient/pull/4798): Verify the VBS enclave key binding on the async attestation path
- [dotnet/SqlClient#4790](https://github.com/dotnet/SqlClient/pull/4790): Move IdentityModel dependencies to Extensions.Azure
- [mini-software/MiniExcel#1020](https://github.com/mini-software/MiniExcel/pull/1020): Add QueryCells to read cell formulas, font colors and number formats

<!-- upstream:end -->

### On the side

OpenWrt and ESP32 projects in Rust, such as [status-light](https://github.com/virzak/status-light) and [luci-types](https://github.com/virzak/luci-types), which also led to fixes in openwrt/luci and esp-rs/espflash.
