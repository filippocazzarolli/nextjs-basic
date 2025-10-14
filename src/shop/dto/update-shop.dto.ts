import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';

export class UpdateShopDto {
  @ApiProperty()
  user_id: number;

  @ApiPropertyOptional()
  date: Date;
}
